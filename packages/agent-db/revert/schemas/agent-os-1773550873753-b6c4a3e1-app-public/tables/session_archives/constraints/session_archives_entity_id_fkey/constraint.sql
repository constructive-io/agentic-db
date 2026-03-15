-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/constraints/session_archives_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".session_archives 
  DROP CONSTRAINT session_archives_entity_id_fkey;


