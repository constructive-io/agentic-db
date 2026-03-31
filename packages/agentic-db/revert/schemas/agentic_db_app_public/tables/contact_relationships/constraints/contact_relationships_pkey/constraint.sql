-- Revert: schemas/agentic_db_app_public/tables/contact_relationships/constraints/contact_relationships_pkey/constraint


ALTER TABLE agentic_db_app_public.contact_relationships 
  DROP CONSTRAINT contact_relationships_pkey;


