-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/columns/created_at/alterations/alt0000002578


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_links 
  ALTER COLUMN created_at DROP NOT NULL;


