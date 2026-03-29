-- Deploy: schemas/agentic_db_app_public/tables/event_links/columns/url/alterations/alt0000010589
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/url/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.event_links 
  ALTER COLUMN url SET NOT NULL;

