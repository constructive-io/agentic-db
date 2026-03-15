-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/created_at/alterations/alt0000004489


ALTER TABLE "agent_db_app_public".context_relations 
  ALTER COLUMN created_at DROP NOT NULL;


