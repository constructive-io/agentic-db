-- Verify schemas/services_public/tables/cors_settings/table

BEGIN;

SELECT
    id,
    database_id,
    api_id,
    allowed_origins
FROM services_public.cors_settings
WHERE false;

ROLLBACK;
