-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/id/alterations/alt0000004714
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/id/column
-- requires: schemas/agent_db_app_public/tables/notifications/columns/source_entity_type/column



ALTER TABLE "agent_db_app_public".recipes 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

