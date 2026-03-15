-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/embedding_text/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
  DROP COLUMN embedding_text RESTRICT;


