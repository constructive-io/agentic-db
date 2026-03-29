-- Revert: schemas/agentic_db_app_public/tables/interactions/constraints/interactions_contact_id_fkey/constraint


ALTER TABLE agentic_db_app_public.interactions 
  DROP CONSTRAINT interactions_contact_id_fkey;


