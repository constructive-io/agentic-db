-- Deploy: schemas/agent_db_memberships_public/procedures/org_get_managers/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema


CREATE FUNCTION agent_db_memberships_public.org_get_managers(
  IN p_entity_id uuid,
  IN p_user_id uuid,
  IN p_max_depth int DEFAULT NULL
) RETURNS TABLE(user_id uuid, depth int) AS $_PGFN_$

        BEGIN
            RETURN QUERY
            SELECT ancestor_id AS user_id, h.depth
            FROM agent_db_memberships_private.org_hierarchy_sprts h
            WHERE h.entity_id = p_entity_id
                AND h.descendant_id = p_user_id
                AND h.ancestor_id != p_user_id
                AND (p_max_depth IS NULL OR h.depth <= p_max_depth);
        END;
        
$_PGFN_$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

