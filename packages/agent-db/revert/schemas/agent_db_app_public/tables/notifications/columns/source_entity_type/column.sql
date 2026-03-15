-- Revert: schemas/agent_db_app_public/tables/notifications/columns/source_entity_type/column


ALTER TABLE agent_db_app_public.notifications 
  DROP COLUMN source_entity_type RESTRICT;


