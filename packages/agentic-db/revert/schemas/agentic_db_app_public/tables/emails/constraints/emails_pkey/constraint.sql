-- Revert: schemas/agentic_db_app_public/tables/emails/constraints/emails_pkey/constraint


ALTER TABLE agentic_db_app_public.emails 
  DROP CONSTRAINT emails_pkey;


