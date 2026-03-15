-- Deploy: schemas/agent_db_app_public/tables/attachments/columns/updated_at/alterations/alt0000000944
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/attachments/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.attachments 
  ALTER COLUMN updated_at SET NOT NULL;

