-- Verify schemas/services_public/tables/rls_settings/table

BEGIN;

SELECT
    id,
    database_id,
    authenticate_schema_id,
    role_schema_id,
    authenticate_function_id,
    authenticate_strict_function_id,
    current_role_function_id,
    current_role_id_function_id,
    current_user_agent_function_id,
    current_ip_address_function_id
FROM services_public.rls_settings
WHERE false;

ROLLBACK;
