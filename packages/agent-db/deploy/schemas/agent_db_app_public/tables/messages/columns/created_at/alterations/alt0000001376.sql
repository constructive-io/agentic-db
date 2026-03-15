-- Deploy: schemas/agent_db_app_public/tables/messages/columns/created_at/alterations/alt0000001376
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/messages/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.messages 
    ALTER COLUMN created_at SET DEFAULT now();

