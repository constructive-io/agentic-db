-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/message_range_end/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  DROP COLUMN message_range_end RESTRICT;


