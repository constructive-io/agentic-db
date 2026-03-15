-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-memberships-public" REVOKE ALL ON TABLES FROM administrator;


