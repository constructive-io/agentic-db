-- Deploy: schemas/agent_db_app_public/tables/attachments/columns/updated_at/alterations/alt0000000945
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/attachments/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.attachments 
    ALTER COLUMN updated_at SET DEFAULT now();

