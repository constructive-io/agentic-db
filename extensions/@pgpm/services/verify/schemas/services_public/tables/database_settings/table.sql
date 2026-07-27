-- Verify schemas/services_public/tables/database_settings/table

BEGIN;

SELECT
    id,
    database_id,
    enable_aggregates,
    enable_postgis,
    enable_search,
    enable_direct_uploads,
    enable_presigned_uploads,
    enable_many_to_many,
    enable_connection_filter,
    enable_ltree,
    enable_llm,
    enable_realtime,
    enable_bulk,
    enable_i18n,
    options
FROM services_public.database_settings
WHERE false;

ROLLBACK;
