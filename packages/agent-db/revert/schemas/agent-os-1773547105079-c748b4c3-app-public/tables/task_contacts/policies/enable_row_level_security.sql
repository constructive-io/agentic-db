-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".task_contacts 
  DISABLE ROW LEVEL SECURITY;


