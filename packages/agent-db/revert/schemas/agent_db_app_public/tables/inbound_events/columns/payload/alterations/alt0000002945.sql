-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/payload/alterations/alt0000002945


ALTER TABLE "agent_db_app_public".inbound_events 
  ALTER COLUMN payload DROP NOT NULL;


