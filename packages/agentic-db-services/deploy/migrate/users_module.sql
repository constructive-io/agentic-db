-- Deploy: migrate/users_module
-- made with <3 @ constructive.io

-- requires: migrate/levels_module


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

INSERT INTO metaschema_modules_public.users_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name,
  type_table_id,
  type_table_name
) VALUES
  ('f7e44279-6ba3-22d5-b7dd-0fb1d7dcac33', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a590b9ac-fbaf-5dd0-bce1-84cff079ebe8', '5d9c849b-e962-041a-de77-54774d5d1e62', 'users', '7a7b966f-e06a-69bd-a02e-61a9d0c21580', 'role_types');


SET session_replication_role TO DEFAULT;


