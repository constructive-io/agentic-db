-- Verify schemas/services_public/tables/webauthn_settings/table

BEGIN;

SELECT
    id,
    database_id,
    schema_id,
    credentials_schema_id,
    sessions_schema_id,
    session_secrets_schema_id,
    credentials_table_id,
    sessions_table_id,
    session_credentials_table_id,
    session_secrets_table_id,
    user_field_id,
    rp_id,
    rp_name,
    origin_allowlist,
    attestation_type,
    require_user_verification,
    resident_key,
    challenge_expiry_seconds
FROM services_public.webauthn_settings
WHERE false;

ROLLBACK;
