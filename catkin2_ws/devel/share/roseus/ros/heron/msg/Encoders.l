;; Auto-generated. Do not edit!


(when (boundp 'heron::Encoders)
  (if (not (find-package "HERON"))
    (make-package "HERON"))
  (shadow 'Encoders (find-package "HERON")))
(unless (find-package "HERON::ENCODERS")
  (make-package "HERON::ENCODERS"))

(in-package "ROS")
;;//! \htmlinclude Encoders.msg.html


(defclass heron::Encoders
  :super ros::object
  :slots (_EncFl _EncFr _EncBl _EncBr ))

(defmethod heron::Encoders
  (:init
   (&key
    ((:EncFl __EncFl) 0)
    ((:EncFr __EncFr) 0)
    ((:EncBl __EncBl) 0)
    ((:EncBr __EncBr) 0)
    )
   (send-super :init)
   (setq _EncFl (round __EncFl))
   (setq _EncFr (round __EncFr))
   (setq _EncBl (round __EncBl))
   (setq _EncBr (round __EncBr))
   self)
  (:EncFl
   (&optional __EncFl)
   (if __EncFl (setq _EncFl __EncFl)) _EncFl)
  (:EncFr
   (&optional __EncFr)
   (if __EncFr (setq _EncFr __EncFr)) _EncFr)
  (:EncBl
   (&optional __EncBl)
   (if __EncBl (setq _EncBl __EncBl)) _EncBl)
  (:EncBr
   (&optional __EncBr)
   (if __EncBr (setq _EncBr __EncBr)) _EncBr)
  (:serialization-length
   ()
   (+
    ;; int64 _EncFl
    8
    ;; int64 _EncFr
    8
    ;; int64 _EncBl
    8
    ;; int64 _EncBr
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _EncFl
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _EncFl (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _EncFl) (= (length (_EncFl . bv)) 2)) ;; bignum
              (write-long (ash (elt (_EncFl . bv) 0) 0) s)
              (write-long (ash (elt (_EncFl . bv) 1) -1) s))
             ((and (class _EncFl) (= (length (_EncFl . bv)) 1)) ;; big1
              (write-long (elt (_EncFl . bv) 0) s)
              (write-long (if (>= _EncFl 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _EncFl s)(write-long (if (>= _EncFl 0) 0 #xffffffff) s)))
     ;; int64 _EncFr
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _EncFr (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _EncFr) (= (length (_EncFr . bv)) 2)) ;; bignum
              (write-long (ash (elt (_EncFr . bv) 0) 0) s)
              (write-long (ash (elt (_EncFr . bv) 1) -1) s))
             ((and (class _EncFr) (= (length (_EncFr . bv)) 1)) ;; big1
              (write-long (elt (_EncFr . bv) 0) s)
              (write-long (if (>= _EncFr 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _EncFr s)(write-long (if (>= _EncFr 0) 0 #xffffffff) s)))
     ;; int64 _EncBl
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _EncBl (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _EncBl) (= (length (_EncBl . bv)) 2)) ;; bignum
              (write-long (ash (elt (_EncBl . bv) 0) 0) s)
              (write-long (ash (elt (_EncBl . bv) 1) -1) s))
             ((and (class _EncBl) (= (length (_EncBl . bv)) 1)) ;; big1
              (write-long (elt (_EncBl . bv) 0) s)
              (write-long (if (>= _EncBl 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _EncBl s)(write-long (if (>= _EncBl 0) 0 #xffffffff) s)))
     ;; int64 _EncBr
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _EncBr (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _EncBr) (= (length (_EncBr . bv)) 2)) ;; bignum
              (write-long (ash (elt (_EncBr . bv) 0) 0) s)
              (write-long (ash (elt (_EncBr . bv) 1) -1) s))
             ((and (class _EncBr) (= (length (_EncBr . bv)) 1)) ;; big1
              (write-long (elt (_EncBr . bv) 0) s)
              (write-long (if (>= _EncBr 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _EncBr s)(write-long (if (>= _EncBr 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _EncFl
#+(or :alpha :irix6 :x86_64)
      (setf _EncFl (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _EncFl (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _EncFr
#+(or :alpha :irix6 :x86_64)
      (setf _EncFr (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _EncFr (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _EncBl
#+(or :alpha :irix6 :x86_64)
      (setf _EncBl (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _EncBl (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _EncBr
#+(or :alpha :irix6 :x86_64)
      (setf _EncBr (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _EncBr (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get heron::Encoders :md5sum-) "8c892101147370a467da7bacfd2db99e")
(setf (get heron::Encoders :datatype-) "heron/Encoders")
(setf (get heron::Encoders :definition-)
      "int64 EncFl
int64 EncFr
int64 EncBl
int64 EncBr
")



(provide :heron/Encoders "8c892101147370a467da7bacfd2db99e")


