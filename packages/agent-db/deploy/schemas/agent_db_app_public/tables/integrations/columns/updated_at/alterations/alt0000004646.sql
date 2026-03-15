-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/updated_at/alterations/alt0000004646
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/integrations/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".integrations 
    ALTER COLUMN updated_at SET DEFAULT now();

