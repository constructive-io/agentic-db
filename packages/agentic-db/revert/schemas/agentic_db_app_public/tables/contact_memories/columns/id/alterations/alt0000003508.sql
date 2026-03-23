-- Revert: schemas/agentic_db_app_public/tables/contact_memories/columns/id/alterations/alt0000003508


ALTER TABLE agentic_db_app_public.contact_memories 
  ALTER COLUMN id DROP NOT NULL;


