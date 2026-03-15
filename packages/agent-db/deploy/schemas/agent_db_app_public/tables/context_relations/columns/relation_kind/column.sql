-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/relation_kind/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/to_id/alterations/alt0000004448


ALTER TABLE "agent_db_app_public".context_relations 
  ADD COLUMN relation_kind text;

