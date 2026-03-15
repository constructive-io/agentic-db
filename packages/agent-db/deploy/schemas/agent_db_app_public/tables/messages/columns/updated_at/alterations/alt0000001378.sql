-- Deploy: schemas/agent_db_app_public/tables/messages/columns/updated_at/alterations/alt0000001378
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/messages/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.messages 
    ALTER COLUMN updated_at SET DEFAULT now();

