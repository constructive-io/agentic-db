-- Deploy: schemas/agent_db_app_public/tables/list_items/columns/updated_at/alterations/alt0000004701
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/list_items/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".list_items 
    ALTER COLUMN updated_at SET DEFAULT now();

