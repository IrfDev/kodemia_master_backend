import psdb


def get_all_customers():
    result = psdb.run_select("*", "customer", None, "first_name")
    return result


def get_customer(id):
    where_command = f"customer_id = {id}"
    result = psdb.run_select("*", "customer", where_command, "first_name")

    return result


def get_customers(*ids):
    where_command = f"customer_id in {str(ids)}"
    result = psdb.run_select("*", "customer", where_command, "first_name")

    return result


def get_customers_by_status(status="1"):
    where_command = f"active = {status}"
    result = psdb.run_select("*", "customer", where_command, "first_name")

    return result
