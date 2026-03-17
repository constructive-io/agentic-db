-- Revert: schemas/agentic_db_app_public/tables/notes/constraints/notes_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".notes 
  DROP CONSTRAINT notes_entity_id_fkey;


