import psdb


def delete_customer(id):
    where_command = f"customer_id = {id}"
    return psdb.run_delete("customer", where_command)


def create_customer(
    country,
    city,
    address,
    district,
    postal_code,
    phone,
    address_id,
    country_id,
    city_id,
    store_id,
    first_name,
    last_name,
    email,
):
    address_id_ = address_id

    if not isinstance(address_id_, str):
        country_id_ = country_id
        city_id_ = city_id
        if not isinstance(country_id_, str):
            country_id_ = psdb.run_select(
                "country_id", "country", f"country = {country}", "country"
            )

        if not isinstance(city_id_, str):
            city_id_ = psdb.run_insert(
                "city", {country_id: country_id_, city: city}, "city_id"
            )

        address_id_ = psdb.run_insert(
            "address",
            {
                "address": address,
                "district": district,
                "city_id": city_id_,
                "postal_code": postal_code,
                "phone": phone,
            },
            "address_id",
        )

    new_customer = psdb.run_insert(
        "customer",
        {
            "store_id": store_id,
            "first_name": first_name,
            "last_name": last_name,
            "email": email,
            "address_id": address_id_,
            "activebool": "true",
            "active": "1",
        },
        "*",
    )

    return new_customer


def update_customer(store_id, first_name, last_name, email, address_id, customer_id):
    if not isinstance(customer_id, str):
        print("You must include a customer_id")
        raise TypeError

    where_command = f"customer_id = {customer_id}"

    updated_customer = psdb.run_update(
        "customer",
        {
            "store_id": store_id,
            "first_name": first_name,
            "last_name": last_name,
            "email": email,
            "address_id": address_id,
        },
        where_command,
    )

    return updated_customer
