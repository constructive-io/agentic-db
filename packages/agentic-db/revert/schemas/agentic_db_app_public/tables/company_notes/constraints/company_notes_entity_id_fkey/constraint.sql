-- Revert: schemas/agentic_db_app_public/tables/company_notes/constraints/company_notes_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.company_notes 
  DROP CONSTRAINT company_notes_entity_id_fkey;


