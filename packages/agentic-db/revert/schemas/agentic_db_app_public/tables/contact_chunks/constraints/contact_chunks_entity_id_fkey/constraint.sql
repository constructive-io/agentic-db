-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/constraints/contact_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.contact_chunks 
  DROP CONSTRAINT contact_chunks_entity_id_fkey;


