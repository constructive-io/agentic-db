-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/from_type/alterations/alt0000004445


ALTER TABLE "agent_db_app_public".context_relations 
  ALTER COLUMN from_type DROP NOT NULL;


