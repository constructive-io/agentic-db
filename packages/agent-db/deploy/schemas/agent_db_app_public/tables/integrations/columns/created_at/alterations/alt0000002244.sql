-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/created_at/alterations/alt0000002244
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/integrations/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".integrations 
    ALTER COLUMN created_at SET DEFAULT now();

