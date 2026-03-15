-- Revert: schemas/agent_db_app_public/tables/attachments/constraints/attachments_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".attachments 
  DROP CONSTRAINT attachments_entity_id_fkey;


