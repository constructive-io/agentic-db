-- Deploy: schemas/agent_db_app_public/tables/templates/columns/created_at/alterations/alt0000001556
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/templates/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.templates 
    ALTER COLUMN created_at SET DEFAULT now();

