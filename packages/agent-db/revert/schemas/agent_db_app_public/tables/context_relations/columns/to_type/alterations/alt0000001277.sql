-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/to_type/alterations/alt0000001277


ALTER TABLE agent_db_app_public.context_relations 
  ALTER COLUMN to_type DROP NOT NULL;


