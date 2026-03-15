-- Deploy: schemas/agent_db_app_public/tables/contact_emails/columns/entity_id/alterations/alt0000001193
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/entity_id/column
-- requires: schemas/agent_db_users_public/tables/users/constraints/users_user_id_fkey/constraint


ALTER TABLE agent_db_app_public.contact_emails 
  ALTER COLUMN entity_id SET NOT NULL;

