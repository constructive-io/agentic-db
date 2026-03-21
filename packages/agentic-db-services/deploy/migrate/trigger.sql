-- Deploy: migrate/trigger
-- made with <3 @ constructive.io

-- requires: migrate/index


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

INSERT INTO metaschema_public.trigger (
  id,
  database_id,
  table_id,
  name,
  event,
  function_name
) VALUES
  ('019d0ffe-51fa-7d4d-9b82-af65bdbcf1d7', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-509c-7e69-b073-260da2d7f651', 'users_search_tsv_tsv_insert_tg', NULL, NULL),
  ('019d0ffe-51fb-7bb2-bc61-f398985b3ed2', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-509c-7e69-b073-260da2d7f651', 'users_search_tsv_tsv_update_tg', NULL, NULL),
  ('019d0ffe-eac6-7757-bd3e-e4a269b50fc1', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-e83b-7337-abd9-0fb28e7a500c', 'encrypted_secrets_update_tg', NULL, NULL),
  ('019d0ffe-eac6-7bd2-a770-88536ddd601e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-e83b-7337-abd9-0fb28e7a500c', 'encrypted_secrets_insert_tg', NULL, NULL),
  ('9fd04181-b702-b829-fbe4-be73dbfff82a', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '7b3d0fb7-b3a3-23b6-7ee2-d68565e5e66b', 'contacts_search_tsv_tsv_insert_tg', NULL, NULL),
  ('432cd293-5745-eee1-a6f6-3732cca3e713', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '7b3d0fb7-b3a3-23b6-7ee2-d68565e5e66b', 'contacts_search_tsv_tsv_update_tg', NULL, NULL),
  ('4113d72b-f526-4aa5-41f6-2e54610e44c8', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '01d3aadf-533c-bbe1-9620-83bd419b4bdc', 'companies_search_tsv_tsv_insert_tg', NULL, NULL),
  ('fe0ff89c-ee6d-4f33-bbaf-5978072b7f33', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '01d3aadf-533c-bbe1-9620-83bd419b4bdc', 'companies_search_tsv_tsv_update_tg', NULL, NULL),
  ('a6c71305-59bd-9acc-7156-8e27c1380429', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '4443ff29-b4e3-c288-df72-696b9078881e', 'events_search_tsv_tsv_insert_tg', NULL, NULL),
  ('5a7554cc-7920-84d6-7581-521254629647', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '4443ff29-b4e3-c288-df72-696b9078881e', 'events_search_tsv_tsv_update_tg', NULL, NULL),
  ('1b1b286c-6f85-60d6-04f4-3b934333e3d9', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'a1776bf4-7c3d-3c15-fd6d-28a492b89fa1', 'venues_search_tsv_tsv_insert_tg', NULL, NULL),
  ('a34ad45c-332b-c7d7-6f96-b83395dcbd52', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'a1776bf4-7c3d-3c15-fd6d-28a492b89fa1', 'venues_search_tsv_tsv_update_tg', NULL, NULL),
  ('2aa56be3-b2aa-5ca0-7309-e91f03c12803', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '75eafb68-4369-6fdf-481e-8c610f1eedc1', 'projects_search_tsv_tsv_insert_tg', NULL, NULL),
  ('e83f6957-bd5a-7865-a224-b4c5c5261b31', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '75eafb68-4369-6fdf-481e-8c610f1eedc1', 'projects_search_tsv_tsv_update_tg', NULL, NULL),
  ('a6b77f66-fe87-f63b-fb82-64c58557b570', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '71a6b33a-4814-a299-2624-c40fb2f3bb6b', 'documents_search_tsv_tsv_insert_tg', NULL, NULL),
  ('48600599-05fa-16be-944f-1c271822414b', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '71a6b33a-4814-a299-2624-c40fb2f3bb6b', 'documents_search_tsv_tsv_update_tg', NULL, NULL);


SET session_replication_role TO DEFAULT;


