import json
import os
import pymysql

# Example credentials (load from environment variables or secrets manager)
DB_HOST = os.environ.get('DB_HOST')
DB_USER = os.environ.get('DB_USER')
DB_PASS = os.environ.get('DB_PASS')
DB_NAME = os.environ.get('DB_NAME')

# Connection is created outside handler for re-use across invocations
connection = None

def get_connection():
    global connection
    if connection is None:
        connection = pymysql.connect(host=DB_HOST, user=DB_USER, password=DB_PASS, database=DB_NAME)
    return connection

def lambda_handler(event, context):
    conn = get_connection()
    with conn.cursor() as cursor:
        cursor.execute("SELECT 'Hello from RDS' as message")
        row = cursor.fetchone()

    return {
        'statusCode': 200,
        'headers': {'Content-Type': 'application/json'},
        'body': json.dumps({'message': row[0]})
    }
