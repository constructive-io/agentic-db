-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/user_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  DROP COLUMN user_id RESTRICT;


