from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

default_args = {
    'start_date': datetime(2023, 1, 1),
    'schedule_interval': '@daily',
    'catchup': False
}

with DAG('sales_pipeline',
         default_args=default_args,
         description='DataOps pipeline for sales data',
         tags=['dataops'],
         ) as dag:

    ingest_data = BashOperator(
        task_id='ingest_data',
        bash_command='echo "Ingest sales.csv (simulate)"'
    )

    run_dbt = BashOperator(
        task_id='run_dbt',
        bash_command='cd dbt && dbt run'
    )

    run_tests = BashOperator(
        task_id='run_great_expectations',
        bash_command='great_expectations checkpoint run sales_checkpoint'
    )

    ingest_data >> run_dbt >> run_tests