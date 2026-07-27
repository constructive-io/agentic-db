-- Deploy: migrate/schema_grant
-- made with <3 @ constructive.io

-- requires: migrate/default_privilege


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_public.schema_grant (
  id,
  database_id,
  schema_id,
  grantee_name
) VALUES
  ('1ca87cc7-21eb-2dda-0d42-0d41126dd525', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1de16531-3dee-8f11-240c-6c0ade1b5dd8', 'administrator'),
  ('3530af27-3af9-7030-e836-c5bce19e279e', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1de16531-3dee-8f11-240c-6c0ade1b5dd8', 'authenticated'),
  ('6ff93cee-2ad8-d3cd-0813-124b8e41be3b', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', 'anonymous'),
  ('8bc1ceb9-07fb-2e07-b91c-59a40fa6ffc8', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', 'administrator'),
  ('ac3c4efa-e5cc-fe0d-6b3f-e79a23437f4c', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1de16531-3dee-8f11-240c-6c0ade1b5dd8', 'anonymous'),
  ('e77c13fe-5a2d-fe77-9d25-6f2bf1852d1b', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', 'authenticated');


SET session_replication_role TO DEFAULT;


