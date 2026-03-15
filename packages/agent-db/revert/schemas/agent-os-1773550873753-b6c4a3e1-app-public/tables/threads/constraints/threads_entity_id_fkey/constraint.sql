-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/constraints/threads_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".threads 
  DROP CONSTRAINT threads_entity_id_fkey;


