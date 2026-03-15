-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/policies/enable_row_level_security


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_event_contacts 
  DISABLE ROW LEVEL SECURITY;


