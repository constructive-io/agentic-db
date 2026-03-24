-- Revert: schemas/agentic_db_app_public/tables/email_recipients/constraints/email_recipients_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".email_recipients 
  DROP CONSTRAINT email_recipients_entity_id_fkey;


