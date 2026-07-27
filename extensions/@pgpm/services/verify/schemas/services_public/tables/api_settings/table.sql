-- Verify schemas/services_public/tables/api_settings/table

BEGIN;

SELECT
    id,
    database_id,
    api_id,
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
FROM services_public.api_settings
WHERE false;

ROLLBACK;
