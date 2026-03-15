-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/from_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/from_type/alterations/alt0000004445


ALTER TABLE "agent_db_app_public".context_relations 
  ADD COLUMN from_id uuid;

