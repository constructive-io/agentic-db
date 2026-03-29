-- Revert: schemas/agentic_db_app_public/tables/contact_memories/constraints/contact_memories_pkey/constraint


ALTER TABLE agentic_db_app_public.contact_memories 
  DROP CONSTRAINT contact_memories_pkey;


