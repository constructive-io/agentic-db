-- Verify schemas/metaschema_modules_public/procedures/compute_blueprint_hash/procedure on pg

SELECT has_function_privilege(
    'metaschema_modules_public.tg_compute_blueprint_hash()',
    'execute'
);

SELECT 1/count(*) FROM pg_trigger WHERE tgname = '_200_compute_blueprint_hash';
