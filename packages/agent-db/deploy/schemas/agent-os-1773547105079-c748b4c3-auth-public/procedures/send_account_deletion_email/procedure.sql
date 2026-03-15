-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-public/procedures/send_account_deletion_email/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-public/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-auth-public".send_account_deletion_email ()
    RETURNS boolean
AS $$
DECLARE
    v_email "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails;
    v_deletion_token text;
    v_min_duration_between_emails interval = interval '3 minutes';
    v_user_id uuid = jwt_public.current_user_id();
    
    v_max_duration interval = interval '3 days';
    account_deletion_email_sent_at timestamptz;
BEGIN
    IF (v_user_id IS NULL) THEN 
        RETURN FALSE;
    END IF;
    SELECT * FROM "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails e
        WHERE e.owner_id = v_user_id
        ORDER BY is_primary DESC, is_verified DESC
        LIMIT 1
        INTO v_email;
    IF (NOT FOUND) THEN
        RETURN FALSE;
    END IF;
    v_user_id = v_email.owner_id;
    account_deletion_email_sent_at = "agent-os-1773547105079-c748b4c3-simple-secrets".get(v_user_id, 'account_deletion_email_sent_at');
    IF (
        account_deletion_email_sent_at IS NOT NULL AND
        NOW() < account_deletion_email_sent_at + v_min_duration_between_emails
    ) THEN 
        RETURN FALSE;
    END IF;
    v_deletion_token = encode(gen_random_bytes(7), 'hex');
    PERFORM "agent-os-1773547105079-c748b4c3-encrypted".set
        (v_user_id, 'account_deletion_token', v_deletion_token, 'crypt');
    PERFORM "agent-os-1773547105079-c748b4c3-simple-secrets".set(v_user_id, 'account_deletion_email_sent_at', (NOW())::text);
    PERFORM
        app_jobs.add_job (
            jwt_private.current_database_id(),
            'send-account-deletion-link',
            json_build_object(
                'email_type', 'account_deletion',
                'user_id', v_user_id,
                'email', v_email.email::text,
                'account_deletion_token', v_deletion_token
            ));
    RETURN TRUE;
END;
$$
LANGUAGE 'plpgsql' VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-auth-public".send_account_deletion_email TO authenticated;

