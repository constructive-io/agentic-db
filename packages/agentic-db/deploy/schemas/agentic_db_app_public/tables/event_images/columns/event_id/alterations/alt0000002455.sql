-- Deploy: schemas/agentic_db_app_public/tables/event_images/columns/event_id/alterations/alt0000002455
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_images/table
-- requires: schemas/agentic_db_app_public/tables/event_images/columns/event_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.event_images 
  ALTER COLUMN event_id SET NOT NULL;

