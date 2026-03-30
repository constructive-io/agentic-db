-- Revert: schemas/agentic_db_app_public/tables/emails/constraints/emails_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".emails 
  DROP CONSTRAINT emails_entity_id_fkey;


