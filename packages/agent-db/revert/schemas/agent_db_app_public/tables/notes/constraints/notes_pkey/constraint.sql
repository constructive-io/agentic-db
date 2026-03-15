-- Revert: schemas/agent_db_app_public/tables/notes/constraints/notes_pkey/constraint


ALTER TABLE agent_db_app_public.notes 
  DROP CONSTRAINT notes_pkey;


