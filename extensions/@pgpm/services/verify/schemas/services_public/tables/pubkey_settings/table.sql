-- Verify schemas/services_public/tables/pubkey_settings/table

BEGIN;

SELECT
    id,
    database_id,
    schema_id,
    crypto_network,
    user_field,
    sign_up_with_key_function_id,
    sign_in_request_challenge_function_id,
    sign_in_record_failure_function_id,
    sign_in_with_challenge_function_id
FROM services_public.pubkey_settings
WHERE false;

ROLLBACK;
