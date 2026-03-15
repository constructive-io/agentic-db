-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/from_type/alterations/alt0000004493
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/from_type/column
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/updated_at/alterations/alt0000004492


ALTER TABLE "agent_db_app_public".context_relations 
  ALTER COLUMN from_type SET NOT NULL;

