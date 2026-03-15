-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-memberships-public" REVOKE ALL ON FUNCTIONS FROM anonymous;


