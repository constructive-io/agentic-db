-- Revert: schemas/agentic_db_app_public/tables/contact_links/constraints/contact_links_pkey/constraint


ALTER TABLE agentic_db_app_public.contact_links 
  DROP CONSTRAINT contact_links_pkey;


